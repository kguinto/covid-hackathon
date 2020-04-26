
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
      'Clinic of Family Medicine',
      '1103 E Grace St
Rensselaer, IN 47978',
      'Rensselaer',
      'IN',
      'ATTN: Sharon Johnson FNP',
      'Yes',
      '40.9332582',
      '-87.1376527'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinic of Family Medicine'
        AND o.latitude = '40.9332582'
        AND o.longitude = '-87.1376527'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinic of Family Medicine'
        AND o.latitude = '40.9332582'
        AND o.longitude = '-87.1376527'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinic of Family Medicine'
        AND o.latitude = '40.9332582'
        AND o.longitude = '-87.1376527'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinic of Family Medicine'
        AND o.latitude = '40.9332582'
        AND o.longitude = '-87.1376527'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinic of Family Medicine'
        AND o.latitude = '40.9332582'
        AND o.longitude = '-87.1376527'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinic of Family Medicine'
        AND o.latitude = '40.9332582'
        AND o.longitude = '-87.1376527'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinic of Family Medicine'
        AND o.latitude = '40.9332582'
        AND o.longitude = '-87.1376527'));

COMMIT;
