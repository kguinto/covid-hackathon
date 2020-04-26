
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
      'Meher Sultana, MD ',
      '1308 Morris Ave STE 202
Union, NJ 07083',
      'Union',
      'NJ',
      'Drop off at the office address',
      'No',
      '40.6868309',
      '-74.2436139'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meher Sultana, MD '
        AND o.latitude = '40.6868309'
        AND o.longitude = '-74.2436139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meher Sultana, MD '
        AND o.latitude = '40.6868309'
        AND o.longitude = '-74.2436139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meher Sultana, MD '
        AND o.latitude = '40.6868309'
        AND o.longitude = '-74.2436139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meher Sultana, MD '
        AND o.latitude = '40.6868309'
        AND o.longitude = '-74.2436139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meher Sultana, MD '
        AND o.latitude = '40.6868309'
        AND o.longitude = '-74.2436139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meher Sultana, MD '
        AND o.latitude = '40.6868309'
        AND o.longitude = '-74.2436139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meher Sultana, MD '
        AND o.latitude = '40.6868309'
        AND o.longitude = '-74.2436139'));

COMMIT;
