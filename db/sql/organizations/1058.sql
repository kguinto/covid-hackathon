
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
      'Mercy Hospital of Buffalo',
      '565 Abbott Rd
Buffalo, NY 14220',
      'Buffalo',
      'NY',
      'Respiratory Therapist Department Attn: Kristen Friend',
      'Yes',
      '42.8475501',
      '-78.8125785'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Hospital of Buffalo'
        AND o.latitude = '42.8475501'
        AND o.longitude = '-78.8125785'));

COMMIT;
