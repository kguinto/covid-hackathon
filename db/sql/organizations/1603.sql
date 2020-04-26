
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
      'Copper Queen Community Hospital',
      '101 Cole Ave
Bisbee, AZ 85603',
      'Bisbee',
      'AZ',
      '101 Cole Ave',
      'Yes',
      '31.4175897',
      '-109.8827933'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Copper Queen Community Hospital'
        AND o.latitude = '31.4175897'
        AND o.longitude = '-109.8827933'));

COMMIT;
