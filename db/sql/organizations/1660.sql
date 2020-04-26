
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
      'La Casa Via Transitional Care Center',
      '1449 Ygnacio Valley Rd
Walnut Creek, CA 94598',
      'Walnut Creek',
      'CA',
      'Items can be dropped off at the front door.',
      'Yes',
      '37.9121803',
      '-122.0443899'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'La Casa Via Transitional Care Center'
        AND o.latitude = '37.9121803'
        AND o.longitude = '-122.0443899'));

COMMIT;
