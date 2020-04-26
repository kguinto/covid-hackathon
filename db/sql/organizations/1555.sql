
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
      'Unity Care Northwest',
      '1616 Cornwall Ave #101
Bellingham, WA 98225',
      'Bellingham',
      'WA',
      'Please knock on internal glass door and leave donation on the floor and we will pick it up. M-F 8:30-4pm',
      'Yes',
      '48.7536186',
      '-122.4746486'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N100',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('P100',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('R100',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N99',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('P99',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('R99',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('P95 and R95',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Care Northwest'
        AND o.latitude = '48.7536186'
        AND o.longitude = '-122.4746486'));

COMMIT;
