
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
      'Virginia Cancer institute ',
      '6605 W Broad St Ste.A
Richmond, VA 23230',
      'Richmond ',
      'VA',
      'Attention: Wanda Jeter',
      'Yes',
      '37.6030188',
      '-77.5207442'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer institute '
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer institute '
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer institute '
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer institute '
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer institute '
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Cancer institute '
        AND o.latitude = '37.6030188'
        AND o.longitude = '-77.5207442'));

COMMIT;
