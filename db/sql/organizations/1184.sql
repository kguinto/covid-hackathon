
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
      'GenieHealth LLC',
      '479 Jumpers Hole Rd #304A
Severna Park, MD 21146',
      'Severna Park',
      'MD',
      'Mail to Attn: Rose, or call office 410-544-0053 to donate/drop off',
      'Yes',
      '39.0838656',
      '-76.5836344'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'GenieHealth LLC'
        AND o.latitude = '39.0838656'
        AND o.longitude = '-76.5836344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'GenieHealth LLC'
        AND o.latitude = '39.0838656'
        AND o.longitude = '-76.5836344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'GenieHealth LLC'
        AND o.latitude = '39.0838656'
        AND o.longitude = '-76.5836344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'GenieHealth LLC'
        AND o.latitude = '39.0838656'
        AND o.longitude = '-76.5836344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'GenieHealth LLC'
        AND o.latitude = '39.0838656'
        AND o.longitude = '-76.5836344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'GenieHealth LLC'
        AND o.latitude = '39.0838656'
        AND o.longitude = '-76.5836344'));

COMMIT;
