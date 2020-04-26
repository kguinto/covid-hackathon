
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
      'University of Chicago Medicine',
      '900 E 57th St
Chicago, IL 60637',
      'Chicago ',
      'IL',
      'Drop off at UCM  - BSD PPE Donation Center,  Point of contact Dan Tiberi 773 702-8865, dtiberi@bsd.uchicago.edu

OR

Knapp Center for Biomedical Discovery (KCDB): Drop off hours 8a-4p  External Drop off: Loading Dock in rear of building.  
Internal Drop Off:  Room 1220',
      'Yes',
      '41.7916469',
      '-87.6034081'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine'
        AND o.latitude = '41.7916469'
        AND o.longitude = '-87.6034081'));

COMMIT;
