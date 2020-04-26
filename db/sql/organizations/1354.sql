
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
      'Encinitas Nursing and Rehabilitation Center',
      '900 Santa Fe Dr
Encinitas, CA 92024',
      'Encinitas',
      'CA',
      'infront of our building entrance',
      'Yes',
      '33.0368993',
      '-117.2725257'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encinitas Nursing and Rehabilitation Center'
        AND o.latitude = '33.0368993'
        AND o.longitude = '-117.2725257'));

COMMIT;
