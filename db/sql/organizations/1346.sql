
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
      'Kaiser Los Angeles Medicine Center',
      '4950 Sunset Blvd 6th Floor
Los Angeles, CA 90027',
      'Los Angeles',
      'CA',
      'ATTN: Dr. Khang',
      'No',
      '34.0977074',
      '-118.2978822'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Los Angeles Medicine Center'
        AND o.latitude = '34.0977074'
        AND o.longitude = '-118.2978822'));

COMMIT;
