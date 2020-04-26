
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
      'Silver Ridge Health Care Center',
      '1151 S Torrey Pines Dr
Las Vegas, NV 89146',
      'Las Vegas',
      'NV',
      'Southside entrance',
      'Yes',
      '36.157903',
      '-115.2356925'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Ridge Health Care Center'
        AND o.latitude = '36.157903'
        AND o.longitude = '-115.2356925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Ridge Health Care Center'
        AND o.latitude = '36.157903'
        AND o.longitude = '-115.2356925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Ridge Health Care Center'
        AND o.latitude = '36.157903'
        AND o.longitude = '-115.2356925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Ridge Health Care Center'
        AND o.latitude = '36.157903'
        AND o.longitude = '-115.2356925'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Ridge Health Care Center'
        AND o.latitude = '36.157903'
        AND o.longitude = '-115.2356925'));

COMMIT;
