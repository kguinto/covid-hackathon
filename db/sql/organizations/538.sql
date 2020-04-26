
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
      'Women & Infants Hospital',
      '101 Dudley St
Providence, RI 02905',
      'Providence',
      'RI',
      'Pick up/Drop off',
      'Unsure',
      '41.8108357',
      '-71.4122641'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Women & Infants Hospital'
        AND o.latitude = '41.8108357'
        AND o.longitude = '-71.4122641'));

COMMIT;
