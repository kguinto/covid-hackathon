
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
      'NewYork-Presbyterian Weill Cornell Medical Center',
      '525 E 68th St
New York, NY 10065',
      'New York -  Manhattan',
      'NY',
      'To donate supplies, email masks@nyp.org. Please call, we will have a cart for you to drop off supplies thanks! | Mail to F24 | Mail Attn: Justin M720 in OBGYN',
      'Yes',
      '40.7643316',
      '-73.9542559'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NewYork-Presbyterian Weill Cornell Medical Center'
        AND o.latitude = '40.7643316'
        AND o.longitude = '-73.9542559'));

COMMIT;
