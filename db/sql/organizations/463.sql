
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
      'San Antonio Regional Hospital',
      '999 San Bernardino Rd
Upland, CA 91786',
      'Upland',
      'CA',
      'Will collect',
      '',
      '34.1019041',
      '-117.6374336'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Antonio Regional Hospital'
        AND o.latitude = '34.1019041'
        AND o.longitude = '-117.6374336'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Antonio Regional Hospital'
        AND o.latitude = '34.1019041'
        AND o.longitude = '-117.6374336'));

COMMIT;
