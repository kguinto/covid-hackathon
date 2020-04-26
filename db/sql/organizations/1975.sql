
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
      'UH Twinsburg Health Center - RADIOLOGY DEPT.',
      '8819 Commons Blvd
Twinsburg, OH 44087',
      'Twinsburg',
      'OH',
      'Go to radiology department, drop off at reception desk , In care of Mary',
      'Yes',
      '41.3088338',
      '-81.4461688'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UH Twinsburg Health Center - RADIOLOGY DEPT.'
        AND o.latitude = '41.3088338'
        AND o.longitude = '-81.4461688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UH Twinsburg Health Center - RADIOLOGY DEPT.'
        AND o.latitude = '41.3088338'
        AND o.longitude = '-81.4461688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UH Twinsburg Health Center - RADIOLOGY DEPT.'
        AND o.latitude = '41.3088338'
        AND o.longitude = '-81.4461688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UH Twinsburg Health Center - RADIOLOGY DEPT.'
        AND o.latitude = '41.3088338'
        AND o.longitude = '-81.4461688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UH Twinsburg Health Center - RADIOLOGY DEPT.'
        AND o.latitude = '41.3088338'
        AND o.longitude = '-81.4461688'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UH Twinsburg Health Center - RADIOLOGY DEPT.'
        AND o.latitude = '41.3088338'
        AND o.longitude = '-81.4461688'));

COMMIT;
