
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
      'COMPASSIONATE HOME HEALTH CARE, INC',
      '2305 Wilmington Rd #3
New Castle, PA 16105',
      'NEW CASTLE',
      'PA',
      '2305 WILMINGTON RD STE 3',
      'Yes',
      '41.0239683',
      '-80.3545111'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'COMPASSIONATE HOME HEALTH CARE, INC'
        AND o.latitude = '41.0239683'
        AND o.longitude = '-80.3545111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'COMPASSIONATE HOME HEALTH CARE, INC'
        AND o.latitude = '41.0239683'
        AND o.longitude = '-80.3545111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'COMPASSIONATE HOME HEALTH CARE, INC'
        AND o.latitude = '41.0239683'
        AND o.longitude = '-80.3545111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'COMPASSIONATE HOME HEALTH CARE, INC'
        AND o.latitude = '41.0239683'
        AND o.longitude = '-80.3545111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'COMPASSIONATE HOME HEALTH CARE, INC'
        AND o.latitude = '41.0239683'
        AND o.longitude = '-80.3545111'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'COMPASSIONATE HOME HEALTH CARE, INC'
        AND o.latitude = '41.0239683'
        AND o.longitude = '-80.3545111'));

COMMIT;
