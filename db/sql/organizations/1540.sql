
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
      'Garden at Terracina Grand',
      '6825 Davis Blvd
Naples, FL 34104',
      'Naples',
      'FL',
      'leave at front door',
      'Yes',
      '26.139851',
      '-81.7293295'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Garden at Terracina Grand'
        AND o.latitude = '26.139851'
        AND o.longitude = '-81.7293295'));

COMMIT;
