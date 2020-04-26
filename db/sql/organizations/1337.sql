
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
      'Franciscan Children''s ',
      '30 Warren St
Boston, MA 02135',
      'Brighton',
      'MA',
      'Please email jfexis@franciscanchildrens.org with detailed information including the brand and the quantity of the items you wish to donate. Thank you!',
      '',
      '42.3501528',
      '-71.1433908'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Children''s '
        AND o.latitude = '42.3501528'
        AND o.longitude = '-71.1433908'));

COMMIT;
