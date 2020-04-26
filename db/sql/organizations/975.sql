
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
      'Circare',
      '620 Erie Blvd W, #302
Syracuse, NY 13204',
      'Syracuse',
      'NY',
      'Call 315-472-7363 ext 145, and we will send people down.

OR

Mailing: ATTN: Danielle Tongue

',
      'Yes',
      '43.0493438',
      '-76.1646459'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Circare'
        AND o.latitude = '43.0493438'
        AND o.longitude = '-76.1646459'));

COMMIT;
