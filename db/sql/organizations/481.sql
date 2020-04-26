
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
      'Saint Vincent Hospital',
      '123 Summer St
Worcester, MA 01608',
      'Worcester',
      'MA',
      'Any delivery',
      '',
      '42.2647185',
      '-71.7968904'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Vincent Hospital'
        AND o.latitude = '42.2647185'
        AND o.longitude = '-71.7968904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Vincent Hospital'
        AND o.latitude = '42.2647185'
        AND o.longitude = '-71.7968904'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Vincent Hospital'
        AND o.latitude = '42.2647185'
        AND o.longitude = '-71.7968904'));

COMMIT;
