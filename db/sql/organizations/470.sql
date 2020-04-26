
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
      'Encompass Health Rehabilitation Hospital of Braintree',
      '250 Pond St
Braintree, MA 02184',
      'Braintree',
      'MA',
      'Drop off or shipping ok',
      'Unsure',
      '42.197953',
      '-71.0184827'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehabilitation Hospital of Braintree'
        AND o.latitude = '42.197953'
        AND o.longitude = '-71.0184827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehabilitation Hospital of Braintree'
        AND o.latitude = '42.197953'
        AND o.longitude = '-71.0184827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehabilitation Hospital of Braintree'
        AND o.latitude = '42.197953'
        AND o.longitude = '-71.0184827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehabilitation Hospital of Braintree'
        AND o.latitude = '42.197953'
        AND o.longitude = '-71.0184827'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Encompass Health Rehabilitation Hospital of Braintree'
        AND o.latitude = '42.197953'
        AND o.longitude = '-71.0184827'));

COMMIT;
