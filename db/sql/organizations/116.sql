
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
      'Elliot at River''s Edge',
      '185 Queen City Ave
Manchester, NH 03101',
      'Manchester',
      'NH',
      'Hours are from 8 a.m. to 4 p.m. beginning Sunday. Donations will be accepted on Monday through Wednesday after Sunday, until further notice.',
      'Unclear',
      '42.9743441',
      '-71.4684319'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Elliot at River''s Edge'
        AND o.latitude = '42.9743441'
        AND o.longitude = '-71.4684319'));

COMMIT;
