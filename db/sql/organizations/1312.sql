
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
      'Hearthstone at Murrayhill',
      '10880 SW Davies Rd
Beaverton, OR 97008',
      'Beaverton',
      'OR',
      '',
      'Yes',
      '45.4418377',
      '-122.8203157'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('No-Touch Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hearthstone at Murrayhill'
        AND o.latitude = '45.4418377'
        AND o.longitude = '-122.8203157'));

COMMIT;