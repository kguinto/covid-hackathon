
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
      'Oroville Hospital ',
      '2767 Olive Highway
Oroville, CA 95966',
      'Oroville ',
      'CA',
      'Emergency Room',
      'Yes',
      '39.5062597',
      '-121.5410928'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oroville Hospital '
        AND o.latitude = '39.5062597'
        AND o.longitude = '-121.5410928'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oroville Hospital '
        AND o.latitude = '39.5062597'
        AND o.longitude = '-121.5410928'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oroville Hospital '
        AND o.latitude = '39.5062597'
        AND o.longitude = '-121.5410928'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oroville Hospital '
        AND o.latitude = '39.5062597'
        AND o.longitude = '-121.5410928'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oroville Hospital '
        AND o.latitude = '39.5062597'
        AND o.longitude = '-121.5410928'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oroville Hospital '
        AND o.latitude = '39.5062597'
        AND o.longitude = '-121.5410928'));

COMMIT;
