
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
      'St. Bernardines medical center',
      '2101 N Waterman Ave
San Bernardino, CA 92404',
      'San Bernardino',
      'CA',
      '2101 N Waterman avenue, San Bernardino, CA 92404 ATTN Dana Molina',
      'No',
      '34.1348371',
      '-117.2769883'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Bernardines medical center'
        AND o.latitude = '34.1348371'
        AND o.longitude = '-117.2769883'));

COMMIT;
