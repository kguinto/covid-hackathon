
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
      'Hospitality Health ER',
      '3111 McCann Rd
Longview, TX 75605',
      'Longview',
      'TX',
      'Please call 903-753-1212 before dropping off materials at Hospitality Health ER, 3111 McCann Road, LONGVIEW, TX 75605. Thank you.',
      'Yes',
      '32.5357843',
      '-94.7547196'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitality Health ER'
        AND o.latitude = '32.5357843'
        AND o.longitude = '-94.7547196'));

COMMIT;
