
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
      'Sentara Healthcare ',
      '6015 Poplar Hall Dr
Norfolk, VA 23502',
      'Norfolk',
      'VA',
      'Please drop off at front entrance of this building to donate and system will redistribute to hospitals. Or you can drop off at any Sentara hospital.',
      'Yes',
      '36.8504408',
      '-76.1971105'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sentara Healthcare '
        AND o.latitude = '36.8504408'
        AND o.longitude = '-76.1971105'));

COMMIT;
