
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
      'RIH/ Hasbro/ Miriam Hospital',
      '179 2nd St
East Providence, RI 02914',
      'East Providence ',
      'RI',
      'Place on or under the rocking chair at the front door.',
      'Yes',
      '41.8115308',
      '-71.3866924'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'RIH/ Hasbro/ Miriam Hospital'
        AND o.latitude = '41.8115308'
        AND o.longitude = '-71.3866924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'RIH/ Hasbro/ Miriam Hospital'
        AND o.latitude = '41.8115308'
        AND o.longitude = '-71.3866924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'RIH/ Hasbro/ Miriam Hospital'
        AND o.latitude = '41.8115308'
        AND o.longitude = '-71.3866924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'RIH/ Hasbro/ Miriam Hospital'
        AND o.latitude = '41.8115308'
        AND o.longitude = '-71.3866924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'RIH/ Hasbro/ Miriam Hospital'
        AND o.latitude = '41.8115308'
        AND o.longitude = '-71.3866924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'RIH/ Hasbro/ Miriam Hospital'
        AND o.latitude = '41.8115308'
        AND o.longitude = '-71.3866924'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'RIH/ Hasbro/ Miriam Hospital'
        AND o.latitude = '41.8115308'
        AND o.longitude = '-71.3866924'));

COMMIT;
