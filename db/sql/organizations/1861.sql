
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
      'Oroville Hospital',
      '2767 Olive Hwy
Oroville, CA 95966',
      'Oroville',
      'CA',
      '',
      '',
      '39.5062597',
      '-121.5410928'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oroville Hospital'
        AND o.latitude = '39.5062597'
        AND o.longitude = '-121.5410928'));

COMMIT;
