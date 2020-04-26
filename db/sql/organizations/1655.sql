
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
      'Sunrise Senior Living in Peabody ',
      '73 Margin St
Peabody, MA 01960',
      'Peabody ',
      'MA',
      'Drop off box in the back of building ',
      'Yes',
      '42.5373758',
      '-70.917109'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunrise Senior Living in Peabody '
        AND o.latitude = '42.5373758'
        AND o.longitude = '-70.917109'));

COMMIT;