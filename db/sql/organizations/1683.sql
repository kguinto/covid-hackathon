
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
      'Advanced Asthma and Allergy of NNY',
      '19316 US-11
Watertown, NY 13601',
      'Watertown ',
      'NY',
      'Mail to: Attn: Tina Gerstenschlager (facility address listed above)',
      'Yes',
      '43.947467',
      '-75.9147344'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Asthma and Allergy of NNY'
        AND o.latitude = '43.947467'
        AND o.longitude = '-75.9147344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Asthma and Allergy of NNY'
        AND o.latitude = '43.947467'
        AND o.longitude = '-75.9147344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Asthma and Allergy of NNY'
        AND o.latitude = '43.947467'
        AND o.longitude = '-75.9147344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Asthma and Allergy of NNY'
        AND o.latitude = '43.947467'
        AND o.longitude = '-75.9147344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Asthma and Allergy of NNY'
        AND o.latitude = '43.947467'
        AND o.longitude = '-75.9147344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Asthma and Allergy of NNY'
        AND o.latitude = '43.947467'
        AND o.longitude = '-75.9147344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Advanced Asthma and Allergy of NNY'
        AND o.latitude = '43.947467'
        AND o.longitude = '-75.9147344'));

COMMIT;
