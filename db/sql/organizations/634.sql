
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
      'Kingsbrook Jewish Medical Center',
      '585 Schenectady Avenue
Brooklyn, NY 11203',
      'New York - Brooklyn',
      'NY',
      'Bring to Briger 3 Unit Manager ',
      'No',
      '40.6593686',
      '-73.93325'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kingsbrook Jewish Medical Center'
        AND o.latitude = '40.6593686'
        AND o.longitude = '-73.93325'));

COMMIT;
