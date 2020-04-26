
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
      'Falck Rocky Mountain',
      '10703 E. Bethany Dr. 
Aurora, CO 80014',
      'Aurora',
      'CO',
      'Front Door',
      'Yes',
      '39.6635101',
      '-104.8634307'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Falck Rocky Mountain'
        AND o.latitude = '39.6635101'
        AND o.longitude = '-104.8634307'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Falck Rocky Mountain'
        AND o.latitude = '39.6635101'
        AND o.longitude = '-104.8634307'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Falck Rocky Mountain'
        AND o.latitude = '39.6635101'
        AND o.longitude = '-104.8634307'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Falck Rocky Mountain'
        AND o.latitude = '39.6635101'
        AND o.longitude = '-104.8634307'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Falck Rocky Mountain'
        AND o.latitude = '39.6635101'
        AND o.longitude = '-104.8634307'));

COMMIT;
