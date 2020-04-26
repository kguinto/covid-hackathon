
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
      'Medical Arts Associates',
      '1632 116th Ave NE Suite C
Bellevue, WA 98004',
      'Bellevue',
      'WA',
      'Attention Bryton',
      '',
      '47.6253357',
      '-122.1849257'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Arts Associates'
        AND o.latitude = '47.6253357'
        AND o.longitude = '-122.1849257'));

COMMIT;
