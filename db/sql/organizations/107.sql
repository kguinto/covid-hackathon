
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
      'Lehigh Valley Hospital - Cedar Crest',
      '1200 S Cedar Crest Blvd
Allentown, PA 18103',
      'Allentown ',
      'PA',
      'Curbside main entrance. More details at https://www.lvhn.org/join-fight-against-covid-19  | Contact Lori Belton, Contract & Product Manager, Supply Chain Mgmt Division, Lehigh Valley Health Network, at P: 484-884-1393 or F: 484-884-0515 or lori.belton@lvhn.org | Suppliers Visit: http://supplychain.lvhn.org',
      'Yes',
      '40.5667553',
      '-75.5241629'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lehigh Valley Hospital - Cedar Crest'
        AND o.latitude = '40.5667553'
        AND o.longitude = '-75.5241629'));

COMMIT;
