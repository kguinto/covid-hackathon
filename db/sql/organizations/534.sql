
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
      'Statcare Urgent & Walk-In Medical Care',
      '232 W Old Country Road
Hicksville, NY 11801',
      'Hicksville',
      'NY',
      'Delivery, we can also pick up on Long Island or the 5 boroughs (We have 9 locations)',
      'Unsure',
      '40.7623035',
      '-73.5293198'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Statcare Urgent & Walk-In Medical Care'
        AND o.latitude = '40.7623035'
        AND o.longitude = '-73.5293198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Statcare Urgent & Walk-In Medical Care'
        AND o.latitude = '40.7623035'
        AND o.longitude = '-73.5293198'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Statcare Urgent & Walk-In Medical Care'
        AND o.latitude = '40.7623035'
        AND o.longitude = '-73.5293198'));

COMMIT;
