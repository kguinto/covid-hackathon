
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
      'Contra Costa Regional Medical Center',
      '2500 Alhambra Avenue
Martinez, CA 94553',
      'Martinez',
      'CA',
      'Donations accepted in Receiving, first driveway on the right off C Street (side street to left of hospital), M-F, 8:30a - 4:30p.  Contact Karin Stryker at kstryker@cchealth.org to provide donation type and questions. ',
      'Ask first',
      '38.006764',
      '-122.1327937'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Contra Costa Regional Medical Center'
        AND o.latitude = '38.006764'
        AND o.longitude = '-122.1327937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Contra Costa Regional Medical Center'
        AND o.latitude = '38.006764'
        AND o.longitude = '-122.1327937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Contra Costa Regional Medical Center'
        AND o.latitude = '38.006764'
        AND o.longitude = '-122.1327937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Contra Costa Regional Medical Center'
        AND o.latitude = '38.006764'
        AND o.longitude = '-122.1327937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Contra Costa Regional Medical Center'
        AND o.latitude = '38.006764'
        AND o.longitude = '-122.1327937'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Contra Costa Regional Medical Center'
        AND o.latitude = '38.006764'
        AND o.longitude = '-122.1327937'));

COMMIT;
