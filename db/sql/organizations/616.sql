
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
      'The Forum at Knightsbridge',
      '4590 Knightsbridge Blvd
Columbus, OH 43214',
      'Columbus',
      'OH',
      'drop off or mailed',
      'Unsure',
      '40.0533062',
      '-83.0407207'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Forum at Knightsbridge'
        AND o.latitude = '40.0533062'
        AND o.longitude = '-83.0407207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Forum at Knightsbridge'
        AND o.latitude = '40.0533062'
        AND o.longitude = '-83.0407207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Forum at Knightsbridge'
        AND o.latitude = '40.0533062'
        AND o.longitude = '-83.0407207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Forum at Knightsbridge'
        AND o.latitude = '40.0533062'
        AND o.longitude = '-83.0407207'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Forum at Knightsbridge'
        AND o.latitude = '40.0533062'
        AND o.longitude = '-83.0407207'));

COMMIT;
