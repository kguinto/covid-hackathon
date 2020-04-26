
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Virginia Cancer Institute',
      '6605 W Broad St Suite A
Richmond, VA 23230',
      'Richmond',
      'VA',
      'Drop off, Mail, whatever works',
      'Unsure',
      '37.6030188',
      '-77.5207442'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer Institute'
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer Institute'
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer Institute'
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer Institute'
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

COMMIT;
