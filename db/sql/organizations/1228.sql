
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
      'Salud Family Health Center',
      '203 S Rollie Ave
Fort Lupton, CO 80621',
      'Ft. Lupton',
      'CO',
      'Attn: Elaine Quintana',
      'Yes',
      '40.0776278',
      '-104.8058375'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salud Family Health Center'
        AND o.latitude = '40.0776278'
        AND o.longitude = '-104.8058375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salud Family Health Center'
        AND o.latitude = '40.0776278'
        AND o.longitude = '-104.8058375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salud Family Health Center'
        AND o.latitude = '40.0776278'
        AND o.longitude = '-104.8058375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salud Family Health Center'
        AND o.latitude = '40.0776278'
        AND o.longitude = '-104.8058375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salud Family Health Center'
        AND o.latitude = '40.0776278'
        AND o.longitude = '-104.8058375'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Salud Family Health Center'
        AND o.latitude = '40.0776278'
        AND o.longitude = '-104.8058375'));

COMMIT;
