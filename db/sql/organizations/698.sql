
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
      'Newport Hospital and Health Services',
      '714 West Pine Street
Newport, WA 99156',
      'Newport',
      'WA',
      'Call 509-447-9300 for arrangements to drop off using our loading dock, or mail to above address',
      'Yes',
      '48.1818221',
      '-117.0565499'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('very much in need of face shields!',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Hospital and Health Services'
        AND o.latitude = '48.1818221'
        AND o.longitude = '-117.0565499'));

COMMIT;
