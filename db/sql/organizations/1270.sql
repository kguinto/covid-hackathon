
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
      'Medical Management Plus, LLC (Home Health Care Agency)',
      '1233 Silas Deane Hwy 2nd Fl
Wethersfield, CT 06109',
      'Wethersfield ',
      'CT',
      'Drop off is on second floor',
      'Yes',
      '41.6875658',
      '-72.6557265'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Management Plus, LLC (Home Health Care Agency)'
        AND o.latitude = '41.6875658'
        AND o.longitude = '-72.6557265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Management Plus, LLC (Home Health Care Agency)'
        AND o.latitude = '41.6875658'
        AND o.longitude = '-72.6557265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Management Plus, LLC (Home Health Care Agency)'
        AND o.latitude = '41.6875658'
        AND o.longitude = '-72.6557265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Management Plus, LLC (Home Health Care Agency)'
        AND o.latitude = '41.6875658'
        AND o.longitude = '-72.6557265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Management Plus, LLC (Home Health Care Agency)'
        AND o.latitude = '41.6875658'
        AND o.longitude = '-72.6557265'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable face masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Management Plus, LLC (Home Health Care Agency)'
        AND o.latitude = '41.6875658'
        AND o.longitude = '-72.6557265'));

COMMIT;
