
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
      'Banner Fort Collins Medical Center',
      '4700 Lady Moon Dr
Fort Collins, CO 80528',
      'Fort Collins',
      'CO',
      'ER entrance',
      'Yes',
      '40.52139',
      '-105.0085323'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Fort Collins Medical Center'
        AND o.latitude = '40.52139'
        AND o.longitude = '-105.0085323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Fort Collins Medical Center'
        AND o.latitude = '40.52139'
        AND o.longitude = '-105.0085323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Fort Collins Medical Center'
        AND o.latitude = '40.52139'
        AND o.longitude = '-105.0085323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Fort Collins Medical Center'
        AND o.latitude = '40.52139'
        AND o.longitude = '-105.0085323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Fort Collins Medical Center'
        AND o.latitude = '40.52139'
        AND o.longitude = '-105.0085323'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Fort Collins Medical Center'
        AND o.latitude = '40.52139'
        AND o.longitude = '-105.0085323'));

COMMIT;
