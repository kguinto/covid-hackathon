
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
      'University of Chicago Medical Center',
      '5192 Greentree Rd
Oak Forest, IL 60452',
      'Oak Forest ',
      'IL',
      'Drop off in our mail. Will be delivered to nurses home and she will bring them in',
      'Yes',
      '41.5825872',
      '-87.7445957'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medical Center'
        AND o.latitude = '41.5825872'
        AND o.longitude = '-87.7445957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medical Center'
        AND o.latitude = '41.5825872'
        AND o.longitude = '-87.7445957'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medical Center'
        AND o.latitude = '41.5825872'
        AND o.longitude = '-87.7445957'));

COMMIT;
